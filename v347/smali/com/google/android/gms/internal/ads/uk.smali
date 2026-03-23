.class public final Lcom/google/android/gms/internal/ads/uk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/xq;

.field private static final b:Lcom/google/android/gms/internal/ads/xq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/xq;->b()Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ty;->a:Lcom/google/android/gms/internal/ads/xq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xq$a;

    const-string v1, "TinkHybridDecrypt"

    const-string v2, "HybridDecrypt"

    const-string v3, "EciesAeadHkdfPrivateKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ti;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/wz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xq$a;->a(Lcom/google/android/gms/internal/ads/wz;)Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    const-string v1, "TinkHybridEncrypt"

    const-string v2, "HybridEncrypt"

    const-string v3, "EciesAeadHkdfPublicKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ti;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/wz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xq$a;->a(Lcom/google/android/gms/internal/ads/wz;)Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    const-string v1, "TINK_HYBRID_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xq$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/xq;

    sput-object v0, Lcom/google/android/gms/internal/ads/uk;->a:Lcom/google/android/gms/internal/ads/xq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xq;->b()Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/uk;->a:Lcom/google/android/gms/internal/ads/xq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xq$a;

    const-string v1, "TINK_HYBRID_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xq$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xq$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd$a;->c()Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/xq;

    sput-object v0, Lcom/google/android/gms/internal/ads/uk;->b:Lcom/google/android/gms/internal/ads/xq;

    :try_start_0
    const-string v0, "TinkHybridEncrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/um;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/um;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/th;)V

    const-string v0, "TinkHybridDecrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/ul;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ul;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/th;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ty;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
