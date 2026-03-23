.class Lio/chirp/connect/ConnectSDKDelegator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/chirp/connect/interfaces/ConnectGetConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/chirp/connect/ConnectSDKDelegator;->setConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
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

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator$1;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    iput-object p2, p0, Lio/chirp/connect/ConnectSDKDelegator$1;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/chirp/connect/models/ChirpError;)V
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$1;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-interface {v0, p1}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator$1;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$1;->val$listener:Lio/chirp/connect/interfaces/ConnectSetConfigListener;

    invoke-virtual {v0, p1, v1}, Lio/chirp/connect/ConnectSDKDelegator;->setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    return-void
.end method
