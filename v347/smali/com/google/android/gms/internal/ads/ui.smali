.class final Lcom/google/android/gms/internal/ads/ui;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/tn",
        "<",
        "Lcom/google/android/gms/internal/ads/tl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/tl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wb;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wb;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/wb;

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zc;->a(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->b()Lcom/google/android/gms/internal/ads/wd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wd;->b()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/vz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->b()Lcom/google/android/gms/internal/ads/wd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wd;->b()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->a()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->a()Lcom/google/android/gms/internal/ads/wh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/wh;)Lcom/google/android/gms/internal/ads/yg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->c()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zv;->b()[B

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ye;->a(Lcom/google/android/gms/internal/ads/yg;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v5, v2, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yj;->e:Lcom/google/android/gms/internal/ads/yj;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->b()Lcom/google/android/gms/internal/ads/vv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vv;->a()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/ur;-><init>(Lcom/google/android/gms/internal/ads/wx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->c()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zv;->b()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->b()Lcom/google/android/gms/internal/ads/wk;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/wk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->c()Lcom/google/android/gms/internal/ads/vt;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/vt;)Lcom/google/android/gms/internal/ads/yh;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xz;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yh;Lcom/google/android/gms/internal/ads/xy;)V

    check-cast v0, Lcom/google/android/gms/internal/ads/tl;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/abj; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ack;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zc;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->b()Lcom/google/android/gms/internal/ads/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wd;->b()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/vz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->b()Lcom/google/android/gms/internal/ads/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wd;->b()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->a()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->a()Lcom/google/android/gms/internal/ads/wh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/wh;)Lcom/google/android/gms/internal/ads/yg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->c()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zv;->b()[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ye;->a(Lcom/google/android/gms/internal/ads/yg;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yj;->e:Lcom/google/android/gms/internal/ads/yj;

    const-string v2, "EC"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->b()Lcom/google/android/gms/internal/ads/vv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vv;->a()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/ur;-><init>(Lcom/google/android/gms/internal/ads/wx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->c()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zv;->b()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wf;->b()Lcom/google/android/gms/internal/ads/wk;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/wk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vz;->c()Lcom/google/android/gms/internal/ads/vt;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/vt;)Lcom/google/android/gms/internal/ads/yh;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xz;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yh;Lcom/google/android/gms/internal/ads/xy;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ui;->d(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/tl;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ack;)Lcom/google/android/gms/internal/ads/ack;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vx;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vx;->a()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/vz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vx;->a()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vz;->a()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wf;->a()Lcom/google/android/gms/internal/ads/wh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/wh;)Lcom/google/android/gms/internal/ads/yg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ye;->a(Lcom/google/android/gms/internal/ads/yg;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ye;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wd;->e()Lcom/google/android/gms/internal/ads/wd$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/wd$a;->a(I)Lcom/google/android/gms/internal/ads/wd$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vx;->a()Lcom/google/android/gms/internal/ads/vz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wd$a;->a(Lcom/google/android/gms/internal/ads/vz;)Lcom/google/android/gms/internal/ads/wd$a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zv;->a([B)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wd$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wd$a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zv;->a([B)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wd$a;->b(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/wb;->d()Lcom/google/android/gms/internal/ads/wb$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/wb$a;->a(I)Lcom/google/android/gms/internal/ads/wb$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wb$a;->a(Lcom/google/android/gms/internal/ads/wd;)Lcom/google/android/gms/internal/ads/wb$a;

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zv;->a([B)Lcom/google/android/gms/internal/ads/zv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wb$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/ack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vx;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/vx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ui;->b(Lcom/google/android/gms/internal/ads/ack;)Lcom/google/android/gms/internal/ads/ack;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid EciesAeadHkdf key format"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/ws;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ui;->b(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/ack;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ws;->d()Lcom/google/android/gms/internal/ads/ws$a;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ws$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zk;->h()Lcom/google/android/gms/internal/ads/zv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/ws$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ws$b;->c:Lcom/google/android/gms/internal/ads/ws$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws$b;)Lcom/google/android/gms/internal/ads/ws$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/ws;

    return-object v0
.end method
