package microsoft.aspnet.signalr.client.hubs;

import com.google.gson.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import microsoft.aspnet.signalr.client.Action;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class Subscription {
    private List<Action<k[]>> mReceived = new ArrayList();

    void onReceived(k[] kVarArr) throws Exception {
        Iterator<Action<k[]>> it = this.mReceived.iterator();
        while (it.hasNext()) {
            it.next().run(kVarArr);
        }
    }

    public void addReceivedHandler(Action<k[]> action) {
        this.mReceived.add(action);
    }
}
