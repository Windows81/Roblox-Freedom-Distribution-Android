package microsoft.aspnet.signalr.client.hubs;

import com.google.gson.k;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import microsoft.aspnet.signalr.client.Action;
import microsoft.aspnet.signalr.client.ErrorCallback;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.SignalRFuture;

/* JADX INFO: loaded from: classes.dex */
public class HubProxy {
    private static final List<String> EXCLUDED_METHODS = Arrays.asList("equals", "getClass", "hashCode", "notify", "notifyAll", "toString", "wait");
    private static final String SUBSCRIPTION_HANDLER_METHOD = "run";
    private HubConnection mConnection;
    private String mHubName;
    private Logger mLogger;
    private Map<String, Subscription> mSubscriptions = Collections.synchronizedMap(new HashMap());
    private Map<String, k> mState = Collections.synchronizedMap(new HashMap());

    protected HubProxy(HubConnection hubConnection, String str, Logger logger) {
        this.mConnection = hubConnection;
        this.mHubName = str;
        this.mLogger = logger;
    }

    public void setState(String str, k kVar) {
        this.mState.put(str, kVar);
    }

    public k getState(String str) {
        return this.mState.get(str);
    }

    public <E> E getValue(String str, Class<E> cls) {
        return (E) this.mConnection.getGson().a(getState(str), (Class) cls);
    }

    public Subscription subscribe(String str) {
        log("Subscribe to event " + str, LogLevel.Information);
        if (str == null) {
            throw new IllegalArgumentException("eventName cannot be null");
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        if (this.mSubscriptions.containsKey(lowerCase)) {
            log("Adding event to existing subscription: " + lowerCase, LogLevel.Information);
            return this.mSubscriptions.get(lowerCase);
        }
        log("Creating new subscription for: " + lowerCase, LogLevel.Information);
        Subscription subscription = new Subscription();
        this.mSubscriptions.put(lowerCase, subscription);
        return subscription;
    }

    public void subscribe(final Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("handler cannot be null");
        }
        for (final Method method : obj.getClass().getMethods()) {
            if (!EXCLUDED_METHODS.contains(method.getName())) {
                subscribe(method.getName()).addReceivedHandler(new Action<k[]>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.1
                    @Override // microsoft.aspnet.signalr.client.Action
                    public void run(k[] kVarArr) throws Exception {
                        HubProxy.this.log("Handling dynamic subscription: " + method.getName(), LogLevel.Verbose);
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length != kVarArr.length) {
                            throw new RuntimeException("The handler has " + parameterTypes.length + " parameters, but there are " + kVarArr.length + " values.");
                        }
                        Object[] objArr = new Object[parameterTypes.length];
                        for (int i = 0; i < kVarArr.length; i++) {
                            objArr[i] = HubProxy.this.mConnection.getGson().a(kVarArr[i], (Class) parameterTypes[i]);
                        }
                        method.setAccessible(true);
                        HubProxy.this.log("Invoking method for dynamic subscription: " + method.getName(), LogLevel.Verbose);
                        method.invoke(obj, objArr);
                    }
                });
            }
        }
    }

    public void removeSubscription(String str) {
        if (str != null) {
            this.mSubscriptions.remove(str.toLowerCase(Locale.getDefault()));
        }
    }

    public SignalRFuture<Void> invoke(String str, Object... objArr) {
        return invoke(null, str, objArr);
    }

    public <E> SignalRFuture<E> invoke(final Class<E> cls, final String str, Object... objArr) {
        if (str == null) {
            throw new IllegalArgumentException("method cannot be null");
        }
        if (objArr == null) {
            throw new IllegalArgumentException("args cannot be null");
        }
        log("Invoking method on hub: " + str, LogLevel.Information);
        k[] kVarArr = new k[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            kVarArr[i] = this.mConnection.getGson().a(objArr[i]);
        }
        final SignalRFuture<E> signalRFuture = new SignalRFuture<>();
        final String strRegisterCallback = this.mConnection.registerCallback(new Action<HubResult>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.2
            @Override // microsoft.aspnet.signalr.client.Action
            public void run(HubResult hubResult) {
                boolean z;
                Object objA;
                HubProxy.this.log("Executing invocation callback for: " + str, LogLevel.Information);
                if (hubResult != null) {
                    if (hubResult.getError() != null) {
                        if (hubResult.isHubException()) {
                            signalRFuture.triggerError(new HubException(hubResult.getError(), hubResult.getErrorData()));
                            return;
                        } else {
                            signalRFuture.triggerError(new Exception(hubResult.getError()));
                            return;
                        }
                    }
                    try {
                        if (hubResult.getState() != null) {
                            for (String str2 : hubResult.getState().keySet()) {
                                HubProxy.this.setState(str2, hubResult.getState().get(str2));
                            }
                        }
                        if (hubResult.getResult() == null || cls == null) {
                            objA = null;
                        } else {
                            HubProxy.this.log("Found result invoking method on hub: " + hubResult.getResult(), LogLevel.Information);
                            objA = HubProxy.this.mConnection.getGson().a(hubResult.getResult(), (Class<Object>) cls);
                        }
                        z = false;
                    } catch (Exception e) {
                        z = true;
                        signalRFuture.triggerError(e);
                        objA = null;
                    }
                    if (!z) {
                        try {
                            signalRFuture.setResult(objA);
                        } catch (Exception e2) {
                            signalRFuture.triggerError(e2);
                        }
                    }
                }
            }
        });
        HubInvocation hubInvocation = new HubInvocation();
        hubInvocation.setHub(this.mHubName);
        hubInvocation.setMethod(str);
        hubInvocation.setArgs(kVarArr);
        hubInvocation.setCallbackId(strRegisterCallback);
        if (this.mState.size() != 0) {
            hubInvocation.setState(this.mState);
        }
        final SignalRFuture<Void> signalRFutureSend = this.mConnection.send(hubInvocation);
        signalRFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.3
            @Override // java.lang.Runnable
            public void run() {
                HubProxy.this.mConnection.removeCallback(strRegisterCallback);
            }
        });
        signalRFuture.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.4
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                signalRFutureSend.triggerError(th);
            }
        });
        return signalRFuture;
    }

    public <E> SignalRFuture<E> invoke(Class<E> cls, final Type type, final String str, Object... objArr) {
        if (str == null) {
            throw new IllegalArgumentException("method cannot be null");
        }
        if (objArr == null) {
            throw new IllegalArgumentException("args cannot be null");
        }
        log("Invoking method on hub: " + str, LogLevel.Information);
        k[] kVarArr = new k[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            kVarArr[i] = this.mConnection.getGson().a(objArr[i]);
        }
        final SignalRFuture<E> signalRFuture = new SignalRFuture<>();
        final String strRegisterCallback = this.mConnection.registerCallback(new Action<HubResult>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.5
            @Override // microsoft.aspnet.signalr.client.Action
            public void run(HubResult hubResult) {
                boolean z;
                Object objA;
                HubProxy.this.log("Executing invocation callback for: " + str, LogLevel.Information);
                if (hubResult != null) {
                    if (hubResult.getError() != null) {
                        if (hubResult.isHubException()) {
                            signalRFuture.triggerError(new HubException(hubResult.getError(), hubResult.getErrorData()));
                            return;
                        } else {
                            signalRFuture.triggerError(new Exception(hubResult.getError()));
                            return;
                        }
                    }
                    try {
                        if (hubResult.getState() != null) {
                            for (String str2 : hubResult.getState().keySet()) {
                                HubProxy.this.setState(str2, hubResult.getState().get(str2));
                            }
                        }
                        if (hubResult.getResult() == null || type == null) {
                            objA = null;
                        } else {
                            HubProxy.this.log("Found result invoking method on hub: " + hubResult.getResult(), LogLevel.Information);
                            objA = HubProxy.this.mConnection.getGson().a(hubResult.getResult(), type);
                        }
                        z = false;
                    } catch (Exception e) {
                        z = true;
                        signalRFuture.triggerError(e);
                        objA = null;
                    }
                    if (!z) {
                        try {
                            signalRFuture.setResult(objA);
                        } catch (Exception e2) {
                            signalRFuture.triggerError(e2);
                        }
                    }
                }
            }
        });
        HubInvocation hubInvocation = new HubInvocation();
        hubInvocation.setHub(this.mHubName);
        hubInvocation.setMethod(str);
        hubInvocation.setArgs(kVarArr);
        hubInvocation.setCallbackId(strRegisterCallback);
        if (this.mState.size() != 0) {
            hubInvocation.setState(this.mState);
        }
        final SignalRFuture<Void> signalRFutureSend = this.mConnection.send(hubInvocation);
        signalRFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.6
            @Override // java.lang.Runnable
            public void run() {
                HubProxy.this.mConnection.removeCallback(strRegisterCallback);
            }
        });
        signalRFuture.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.7
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                signalRFutureSend.triggerError(th);
            }
        });
        return signalRFuture;
    }

    void invokeEvent(String str, k[] kVarArr) throws Exception {
        if (str == null) {
            throw new IllegalArgumentException("eventName cannot be null");
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        if (this.mSubscriptions.containsKey(lowerCase)) {
            this.mSubscriptions.get(lowerCase).onReceived(kVarArr);
        }
    }

    private <E1, E2, E3, E4, E5> void on(String str, final SubscriptionHandler5<E1, E2, E3, E4, E5> subscriptionHandler5, final Class<?>... clsArr) {
        if (subscriptionHandler5 == null) {
            throw new IllegalArgumentException("handler cannot be null");
        }
        subscribe(str).addReceivedHandler(new Action<k[]>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.8
            @Override // microsoft.aspnet.signalr.client.Action
            public void run(k[] kVarArr) throws Exception {
                Method method;
                if (clsArr.length == kVarArr.length) {
                    Method[] methods = subscriptionHandler5.getClass().getMethods();
                    int length = methods.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            method = null;
                            break;
                        }
                        method = methods[i];
                        if (method.getName().equals(HubProxy.SUBSCRIPTION_HANDLER_METHOD)) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (clsArr.length != kVarArr.length) {
                        throw new RuntimeException("The handler has " + clsArr.length + " parameters, but there are " + kVarArr.length + " values.");
                    }
                    Object[] objArr = new Object[5];
                    for (int i2 = 0; i2 < kVarArr.length; i2++) {
                        objArr[i2] = HubProxy.this.mConnection.getGson().a(kVarArr[i2], clsArr[i2]);
                    }
                    method.setAccessible(true);
                    method.invoke(subscriptionHandler5, objArr);
                    return;
                }
                HubProxy.this.log("The handler has " + clsArr.length + " parameters, but there are " + kVarArr.length + " values. (handler IGNORED)", LogLevel.Verbose);
            }
        });
    }

    public <E1, E2, E3, E4, E5> void on(String str, final SubscriptionHandler5<E1, E2, E3, E4, E5> subscriptionHandler5, Class<E1> cls, Class<E2> cls2, Class<E3> cls3, Class<E4> cls4, Class<E5> cls5) {
        on(str, new SubscriptionHandler5<E1, E2, E3, E4, E5>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.9
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(E1 e1, E2 e2, E3 e3, E4 e4, E5 e5) {
                subscriptionHandler5.run(e1, e2, e3, e4, e5);
            }
        }, cls, cls2, cls3, cls4, cls5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E1, E2, E3, E4> void on(String str, final SubscriptionHandler4<E1, E2, E3, E4> subscriptionHandler4, Class<E1> cls, Class<E2> cls2, Class<E3> cls3, Class<E4> cls4) {
        on(str, new SubscriptionHandler5<E1, E2, E3, E4, Void>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.10
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(E1 e1, E2 e2, E3 e3, E4 e4, Void r6) {
                subscriptionHandler4.run(e1, e2, e3, e4);
            }
        }, (Class<?>[]) new Class[]{cls, cls2, cls3, cls4});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E1, E2, E3> void on(String str, final SubscriptionHandler3<E1, E2, E3> subscriptionHandler3, Class<E1> cls, Class<E2> cls2, Class<E3> cls3) {
        on(str, new SubscriptionHandler5<E1, E2, E3, Void, Void>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.11
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(E1 e1, E2 e2, E3 e3, Void r5, Void r6) {
                subscriptionHandler3.run(e1, e2, e3);
            }
        }, (Class<?>[]) new Class[]{cls, cls2, cls3});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E1, E2> void on(String str, final SubscriptionHandler2<E1, E2> subscriptionHandler2, Class<E1> cls, Class<E2> cls2) {
        on(str, new SubscriptionHandler5<E1, E2, Void, Void, Void>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.12
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(E1 e1, E2 e2, Void r4, Void r5, Void r6) {
                subscriptionHandler2.run(e1, e2);
            }
        }, (Class<?>[]) new Class[]{cls, cls2});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E1> void on(String str, final SubscriptionHandler1<E1> subscriptionHandler1, Class<E1> cls) {
        on(str, new SubscriptionHandler5<E1, Void, Void, Void, Void>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.13
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(E1 e1, Void r3, Void r4, Void r5, Void r6) {
                subscriptionHandler1.run(e1);
            }
        }, (Class<?>[]) new Class[]{cls});
    }

    public <E1> void on(String str, final SubscriptionHandler subscriptionHandler) {
        on(str, new SubscriptionHandler5<Void, Void, Void, Void, Void>() { // from class: microsoft.aspnet.signalr.client.hubs.HubProxy.14
            @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler5
            public void run(Void r2, Void r3, Void r4, Void r5, Void r6) {
                subscriptionHandler.run();
            }
        }, new Class[0]);
    }

    protected void log(String str, LogLevel logLevel) {
        if ((str != null) & (this.mLogger != null)) {
            this.mLogger.log("HubProxy " + this.mHubName + " - " + str, logLevel);
        }
    }
}
