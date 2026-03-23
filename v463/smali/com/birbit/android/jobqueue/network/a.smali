.class public Lcom/birbit/android/jobqueue/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/network/NetworkEventProvider;
.implements Lcom/birbit/android/jobqueue/network/NetworkUtil;


# instance fields
.field private a:Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/network/a;->c(Landroid/content/Context;)V

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/network/a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/birbit/android/jobqueue/network/a$1;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/network/a$1;-><init>(Lcom/birbit/android/jobqueue/network/a;)V

    invoke-static {}, Lcom/birbit/android/jobqueue/network/a;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private static a()Landroid/content/IntentFilter;
    .locals 3

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/birbit/android/jobqueue/network/a$2;

    invoke-direct {v2, p0, p1}, Lcom/birbit/android/jobqueue/network/a$2;-><init>(Lcom/birbit/android/jobqueue/network/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/birbit/android/jobqueue/network/a$3;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/network/a$3;-><init>(Lcom/birbit/android/jobqueue/network/a;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const-string v0, "power"

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 108
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/birbit/android/jobqueue/network/a;->a:Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/network/a;->getNetworkStatus(Landroid/content/Context;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;->onNetworkChange(I)V

    return-void
.end method

.method public getNetworkStatus(Landroid/content/Context;)I
    .locals 2

    .line 76
    invoke-static {p1}, Lcom/birbit/android/jobqueue/network/a;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "connectivity"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 80
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public setListener(Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/birbit/android/jobqueue/network/a;->a:Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;

    return-void
.end method
