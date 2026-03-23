.class public final Lcom/google/android/gms/internal/ads/lf;
.super Lcom/google/android/gms/internal/ads/avg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/avg",
        "<",
        "Lcom/google/android/gms/internal/ads/atf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/no;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/no",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/mc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/no;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/no",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/lf;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/no;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/no;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/no",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ads/lg;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/lg;-><init>(Lcom/google/android/gms/internal/ads/no;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/avg;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/bch;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/lf;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lf;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v0, Lcom/google/android/gms/internal/ads/mc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lf;->c:Lcom/google/android/gms/internal/ads/mc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf;->c:Lcom/google/android/gms/internal/ads/mc;

    const-string v1, "GET"

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/bbg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/atf;",
            ")",
            "Lcom/google/android/gms/internal/ads/bbg",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/agm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bbg;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/agm;)Lcom/google/android/gms/internal/ads/bbg;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/atf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf;->c:Lcom/google/android/gms/internal/ads/mc;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/atf;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/atf;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf;->c:Lcom/google/android/gms/internal/ads/mc;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/atf;->b:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/mc;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mc;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf;->a:Lcom/google/android/gms/internal/ads/no;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/no;->b(Ljava/lang/Object;)V

    return-void
.end method
