.class public abstract Lchirpconnect/Chirpconnect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchirpconnect/Chirpconnect$proxyCallbackSet;
    }
.end annotation


# static fields
.field public static final SDK_STATE_NOT_CREATED:B = 0x0t

.field public static final SDK_STATE_PAUSED:B = 0x2t

.field public static final SDK_STATE_RECEIVING:B = 0x5t

.field public static final SDK_STATE_RUNNING:B = 0x3t

.field public static final SDK_STATE_SENDING:B = 0x4t

.field public static final SDK_STATE_STOPPED:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lgo/Seq;->touch()V

    invoke-static {}, Lchirpconnect/Chirpconnect;->_init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _init()V
.end method

.method public static native getVersion()Lchirpconnect/SDKVersion;
.end method

.method public static native newSDK(Ljava/lang/String;Ljava/lang/String;)Lchirpconnect/SDK;
.end method

.method public static touch()V
    .locals 0

    return-void
.end method
