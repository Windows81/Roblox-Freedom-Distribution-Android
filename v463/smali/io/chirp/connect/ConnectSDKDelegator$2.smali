.class Lio/chirp/connect/ConnectSDKDelegator$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/chirp/connect/interfaces/ConnectAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/chirp/connect/ConnectSDKDelegator;->setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/chirp/connect/ConnectSDKDelegator;

.field final synthetic val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;


# direct methods
.method constructor <init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    iput-object p2, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/chirp/connect/models/ChirpError;)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$002(Lio/chirp/connect/ConnectSDKDelegator;Z)Z

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->stopListening()Lio/chirp/connect/models/ChirpError;

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-interface {v0, p1}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$002(Lio/chirp/connect/ConnectSDKDelegator;Z)Z

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v0}, Lio/chirp/connect/ConnectSDKDelegator;->access$100(Lio/chirp/connect/ConnectSDKDelegator;)V

    new-instance v0, Lio/chirp/connect/scenario/CallbackSetScenario;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$200(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v2}, Lio/chirp/connect/ConnectSDKDelegator;->access$300(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/analytics/Analytics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/scenario/CallbackSetScenario;-><init>(Ljava/util/List;Lio/chirp/connect/analytics/Analytics;)V

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$400(Lio/chirp/connect/ConnectSDKDelegator;)Lchirpconnect/SDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lchirpconnect/SDK;->setCallbacks(Lchirpconnect/CallbackSet;)Lchirpconnect/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lchirpconnect/SDKError;->errorCode()S

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    new-instance v2, Lio/chirp/connect/models/ChirpError;

    invoke-direct {v2, v0}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    invoke-interface {v1, v2}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$2;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-interface {v0}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onSuccess()V

    :goto_0
    return-void
.end method
