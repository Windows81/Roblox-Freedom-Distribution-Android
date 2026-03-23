.class Lio/chirp/connect/ConnectSDKDelegator$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/chirp/connect/ConnectSDKDelegator;->auth(Lio/chirp/connect/interfaces/ConnectAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/chirp/connect/ConnectSDKDelegator;

.field final synthetic val$listener:Lio/chirp/connect/interfaces/ConnectAuthListener;


# direct methods
.method constructor <init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectAuthListener;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    iput-object p2, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->val$listener:Lio/chirp/connect/interfaces/ConnectAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v0}, Lio/chirp/connect/ConnectSDKDelegator;->access$700(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/b/a;

    move-result-object v0

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$500(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v2}, Lio/chirp/connect/ConnectSDKDelegator;->access$600(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect"

    invoke-virtual {v0, v1, v2, v3}, Lio/chirp/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lio/chirp/b/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChirpConnect cannot authenticate. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChirpConnect"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->val$listener:Lio/chirp/connect/interfaces/ConnectAuthListener;

    new-instance v1, Lio/chirp/connect/models/ChirpError;

    sget-object v2, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NETWORK_PERMISSIONS_NOT_GRANTED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v3, "ChirpConnect cannot fetch the config. No network permissions"

    invoke-direct {v1, v2, v3}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/chirp/connect/interfaces/ConnectAuthListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lio/chirp/b/b;->a()I

    move-result v1

    sget-object v2, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_ACCOUNT_DISABLED:Lio/chirp/connect/models/ChirpErrorCode;

    invoke-virtual {v2}, Lio/chirp/connect/models/ChirpErrorCode;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->val$listener:Lio/chirp/connect/interfaces/ConnectAuthListener;

    new-instance v2, Lio/chirp/connect/models/ChirpError;

    invoke-virtual {v0}, Lio/chirp/b/b;->a()I

    move-result v3

    invoke-virtual {v0}, Lio/chirp/b/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/chirp/connect/models/ChirpError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lio/chirp/connect/interfaces/ConnectAuthListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$3;->val$listener:Lio/chirp/connect/interfaces/ConnectAuthListener;

    invoke-interface {v0}, Lio/chirp/connect/interfaces/ConnectAuthListener;->onSuccess()V

    return-void
.end method
