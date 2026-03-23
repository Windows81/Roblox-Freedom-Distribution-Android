.class final Lcom/google/android/gms/internal/ads/ur;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/vn;

.field private d:Lcom/google/android/gms/internal/ads/uw;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wx;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wx;->b()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vp;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/vp;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tv;->b(Lcom/google/android/gms/internal/ads/wx;)Lcom/google/android/gms/internal/ads/ack;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/vn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vp;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ur;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abj; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wx;->b()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uy;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/uy;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tv;->b(Lcom/google/android/gms/internal/ads/wx;)Lcom/google/android/gms/internal/ads/ack;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uy;->a()Lcom/google/android/gms/internal/ads/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vc;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uy;->b()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wo;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ur;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ur;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/abj; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unsupported AEAD DEM key type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ur;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/ads/tf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ur;->b:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Symmetric key has incorrect length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/vn;->c()Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/vn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vn$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ur;->b:I

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zv;->a([BII)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vn$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/vn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/tv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tf;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:I

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ur;->b:I

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/va;->d()Lcom/google/android/gms/internal/ads/va$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/uw;->b()Lcom/google/android/gms/internal/ads/va;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/va$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zv;->a([B)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/va$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/va$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/va;

    invoke-static {}, Lcom/google/android/gms/internal/ads/wm;->d()Lcom/google/android/gms/internal/ads/wm$a;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/uw;->c()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wm$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zv;->a([B)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wm$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wm$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/abd;

    check-cast v1, Lcom/google/android/gms/internal/ads/wm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/uw;->d()Lcom/google/android/gms/internal/ads/uw$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/uw;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/uw$a;->a(I)Lcom/google/android/gms/internal/ads/uw$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/uw$a;->a(Lcom/google/android/gms/internal/ads/va;)Lcom/google/android/gms/internal/ads/uw$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uw$a;->a(Lcom/google/android/gms/internal/ads/wm;)Lcom/google/android/gms/internal/ads/uw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/uw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/tv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tf;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
