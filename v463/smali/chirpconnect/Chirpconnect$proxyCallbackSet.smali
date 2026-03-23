.class final Lchirpconnect/Chirpconnect$proxyCallbackSet;
.super Ljava/lang/Object;

# interfaces
.implements Lchirpconnect/CallbackSet;
.implements Lgo/Seq$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchirpconnect/Chirpconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "proxyCallbackSet"
.end annotation


# instance fields
.field private final refnum:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lchirpconnect/Chirpconnect$proxyCallbackSet;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method


# virtual methods
.method public final incRefnum()I
    .locals 1

    iget v0, p0, Lchirpconnect/Chirpconnect$proxyCallbackSet;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    iget v0, p0, Lchirpconnect/Chirpconnect$proxyCallbackSet;->refnum:I

    return v0
.end method

.method public native received([BB)V
.end method

.method public native receiving(B)V
.end method

.method public native sending([BB)V
.end method

.method public native sent([BB)V
.end method

.method public native stateChanged(BB)V
.end method
