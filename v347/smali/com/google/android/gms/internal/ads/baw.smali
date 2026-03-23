.class public final Lcom/google/android/gms/internal/ads/baw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/bal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bal",
        "<TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ban;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ban",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bao",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/azk;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bao;Lcom/google/android/gms/internal/ads/ban;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/azk;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bao",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/ban",
            "<TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baw;->c:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/baw;->b:Lcom/google/android/gms/internal/ads/bao;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/baw;->a:Lcom/google/android/gms/internal/ads/ban;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/baw;)Lcom/google/android/gms/internal/ads/ban;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baw;->a:Lcom/google/android/gms/internal/ads/ban;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/azx;Lcom/google/android/gms/internal/ads/bah;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/no;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/azx;",
            "Lcom/google/android/gms/internal/ads/bah;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/no",
            "<TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/jm;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/o;->o:Lcom/google/android/gms/ads/internal/gmsg/g;

    new-instance v2, Lcom/google/android/gms/internal/ads/baz;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/baz;-><init>(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/azx;Lcom/google/android/gms/internal/ads/no;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/g;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/h;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/baw;->b:Lcom/google/android/gms/internal/ads/bao;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/bao;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baw;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/bah;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Throwable;)V

    const-string v1, "Unable to invokeJavaScript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/azx;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/azx;->c()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/azx;Lcom/google/android/gms/internal/ads/bah;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/no;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/baw;->a(Lcom/google/android/gms/internal/ads/azx;Lcom/google/android/gms/internal/ads/bah;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/no;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/nd",
            "<TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/baw;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/nd",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/no;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baw;->c:Lcom/google/android/gms/internal/ads/azk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/azk;->b(Lcom/google/android/gms/internal/ads/agv;)Lcom/google/android/gms/internal/ads/azx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bax;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/bax;-><init>(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/azx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/no;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/bay;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/bay;-><init>(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/azx;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/nu;->a(Lcom/google/android/gms/internal/ads/nt;Lcom/google/android/gms/internal/ads/nr;)V

    return-object v0
.end method
