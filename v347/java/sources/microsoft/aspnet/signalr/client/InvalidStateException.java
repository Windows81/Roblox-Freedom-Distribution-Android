package microsoft.aspnet.signalr.client;

/* JADX INFO: loaded from: classes.dex */
public class InvalidStateException extends RuntimeException {
    private static final long serialVersionUID = 2754012197945989794L;

    public InvalidStateException(ConnectionState connectionState) {
        super("The operation is not allowed in the '" + connectionState.toString() + "' state");
    }
}
