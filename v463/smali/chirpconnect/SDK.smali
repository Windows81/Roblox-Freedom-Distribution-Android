.class public final Lchirpconnect/SDK;
.super Ljava/lang/Object;

# interfaces
.implements Lgo/Seq$Proxy;


# instance fields
.field private final refnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lchirpconnect/Chirpconnect;->touch()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lchirpconnect/SDK;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lchirpconnect/SDK;->__NewSDK(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lchirpconnect/SDK;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method private static native __NewSDK(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public native asString([B)Ljava/lang/String;
.end method

.method public native delete()Lchirpconnect/SDKError;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lchirpconnect/SDK;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lchirpconnect/SDK;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public native getAutoMute()Z
.end method

.method public native getChannelCount()B
.end method

.method public native getChannelState(B)B
.end method

.method public native getDuration(J)F
.end method

.method public native getExpiryTime()J
.end method

.method public native getInfo()Ljava/lang/String;
.end method

.method public native getMaxPayloadLength()J
.end method

.method public native getProtocolName()Ljava/lang/String;
.end method

.method public native getProtocolVersion()B
.end method

.method public native getSampleRate()I
.end method

.method public native getState()B
.end method

.method public native getTransmissionChannel()B
.end method

.method public native getVolume()F
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final incRefnum()I
    .locals 1

    iget v0, p0, Lchirpconnect/SDK;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    iget v0, p0, Lchirpconnect/SDK;->refnum:I

    return v0
.end method

.method public native isOfflineMode()Z
.end method

.method public native isValid([B)Lchirpconnect/SDKError;
.end method

.method public native newPayload(J)[B
.end method

.method public native pause(Z)Lchirpconnect/SDKError;
.end method

.method public native processFloats([B[B)Lchirpconnect/SDKError;
.end method

.method public native processFloatsInput([B)Lchirpconnect/SDKError;
.end method

.method public native processFloatsOutput([B)Lchirpconnect/SDKError;
.end method

.method public native processShorts([B[B)Lchirpconnect/SDKError;
.end method

.method public native processShortsInput([B)Lchirpconnect/SDKError;
.end method

.method public native processShortsOutput([B)Lchirpconnect/SDKError;
.end method

.method public native randomPayload(J)[B
.end method

.method public native send([B)Lchirpconnect/SDKError;
.end method

.method public native setAutoMute(Z)Lchirpconnect/SDKError;
.end method

.method public native setCallbackPtr()Lchirpconnect/SDKError;
.end method

.method public native setCallbacks(Lchirpconnect/CallbackSet;)Lchirpconnect/SDKError;
.end method

.method public native setConfig(Ljava/lang/String;)Lchirpconnect/SDKError;
.end method

.method public native setRandomSeed(I)Lchirpconnect/SDKError;
.end method

.method public native setSampleRate(I)Lchirpconnect/SDKError;
.end method

.method public native setTransmissionChannel(B)Lchirpconnect/SDKError;
.end method

.method public native setVolume(F)Lchirpconnect/SDKError;
.end method

.method public native start()Lchirpconnect/SDKError;
.end method

.method public native stop()Lchirpconnect/SDKError;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native triggerCallbacks([B)Lchirpconnect/SDKError;
.end method
