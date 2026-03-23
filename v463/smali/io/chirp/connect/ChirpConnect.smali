.class public Lio/chirp/connect/ChirpConnect;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static delegator:Lio/chirp/connect/ConnectSDKDelegator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/chirp/connect/ConnectSDKDelegator;

    invoke-direct {v0, p1, p2, p3}, Lio/chirp/connect/ConnectSDKDelegator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->init()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/chirp/connect/ConnectSDKDelegator;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->close()V

    return-void
.end method

.method public enableLogs()V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->enableLogs()V

    return-void
.end method

.method public getChannelCount()B
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->getChannelCount()B

    move-result v0

    return v0
.end method

.method public getConnectState()Lio/chirp/connect/models/ConnectState;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->getState()B

    move-result v0

    invoke-static {v0}, Lio/chirp/connect/models/ConnectState;->createConnectState(B)Lio/chirp/connect/models/ConnectState;

    move-result-object v0

    return-object v0
.end method

.method public getDurationForPayloadLength(J)F
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1, p2}, Lio/chirp/connect/ConnectSDKDelegator;->getDurationForPayloadLength(J)F

    move-result p1

    return p1
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->getInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPayloadLength()J
    .locals 2

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->getMaxPayloadLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStateForChannel(B)Lio/chirp/connect/models/ConnectState;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->getStateForChannel(B)B

    move-result p1

    invoke-static {p1}, Lio/chirp/connect/models/ConnectState;->createConnectState(B)Lio/chirp/connect/models/ConnectState;

    move-result-object p1

    return-object p1
.end method

.method public getTransmissionChannel()B
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->getTransmissionChannel()B

    move-result v0

    return v0
.end method

.method public isValidPayload([B)Z
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->isValidPayload([B)Z

    move-result p1

    return p1
.end method

.method public payloadToHexString([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->payloadToHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public randomPayload(J)[B
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1, p2}, Lio/chirp/connect/ConnectSDKDelegator;->randomPayload(J)[B

    move-result-object p1

    return-object p1
.end method

.method public send([B)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->send([B)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1, p2}, Lio/chirp/connect/ConnectSDKDelegator;->setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    return-void
.end method

.method public setConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    return-void
.end method

.method public setConnectAudioBufferCallback(Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;)V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setConnectAudioBufferCallback(Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;)V

    return-void
.end method

.method public setListenToSelf(Z)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setListenToSelf(Z)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lio/chirp/connect/interfaces/ConnectEventListener;)V
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setListener(Lio/chirp/connect/interfaces/ConnectEventListener;)V

    return-void
.end method

.method public setRandomSeed(I)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setRandomSeed(I)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public setTransmissionChannel(B)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setTransmissionChannel(B)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public setVolume(F)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->setVolume(F)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public start()Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->startListening()Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0}, Lio/chirp/connect/ConnectSDKDelegator;->stopListening()Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    return-object v0
.end method

.method public writeWavFile([BLjava/lang/String;)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1, p2}, Lio/chirp/connect/ConnectSDKDelegator;->writeWav([BLjava/lang/String;)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public writeWavFile([BLjava/lang/String;Ljava/io/File;)Lio/chirp/connect/models/ChirpError;
    .locals 1

    sget-object v0, Lio/chirp/connect/ChirpConnect;->delegator:Lio/chirp/connect/ConnectSDKDelegator;

    invoke-virtual {v0, p1, p2, p3}, Lio/chirp/connect/ConnectSDKDelegator;->writeWav([BLjava/lang/String;Ljava/io/File;)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method
