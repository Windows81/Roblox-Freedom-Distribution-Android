.class final Lcom/google/android/gms/internal/ads/acv;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/act;

.field private static final b:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/acv;->c()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/acv;->a:Lcom/google/android/gms/internal/ads/act;

    new-instance v0, Lcom/google/android/gms/internal/ads/acu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/acu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/acv;->b:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/act;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/acv;->a:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/act;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/acv;->b:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/internal/ads/act;
    .locals 2

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
