.class Lio/chirp/connect/ConnectSDKDelegator$6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/chirp/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/connect/ConnectSDKDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/chirp/connect/ConnectSDKDelegator;


# direct methods
.method constructor <init>(Lio/chirp/connect/ConnectSDKDelegator;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processShortsInput([B)V
    .locals 3

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$400(Lio/chirp/connect/ConnectSDKDelegator;)Lchirpconnect/SDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lchirpconnect/SDK;->processShortsInput([B)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$1200(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v1, Lio/chirp/connect/ConnectSDKDelegator;->audioBuffCallbackCopy:[B

    iget-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {p1}, Lio/chirp/connect/ConnectSDKDelegator;->access$1200(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;

    move-result-object p1

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    iget-object v1, v1, Lio/chirp/connect/ConnectSDKDelegator;->audioBuffCallbackCopy:[B

    invoke-interface {p1, v1}, Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;->onAudioBufferUpdate([B)V

    :cond_0
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/chirp/connect/helpers/LogManager;->writeLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public processShortsOutput([B)[B
    .locals 2

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator$6;->this$0:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-static {v1}, Lio/chirp/connect/ConnectSDKDelegator;->access$400(Lio/chirp/connect/ConnectSDKDelegator;)Lchirpconnect/SDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lchirpconnect/SDK;->processShortsOutput([B)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/chirp/connect/helpers/LogManager;->writeLog(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
