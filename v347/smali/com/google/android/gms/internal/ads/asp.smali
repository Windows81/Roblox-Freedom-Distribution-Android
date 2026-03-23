.class public final Lcom/google/android/gms/internal/ads/asp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/bq;

.field private e:Lcom/google/android/gms/internal/ads/avv;

.field private f:Lcom/google/android/gms/ads/internal/gmsg/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asp;->d:Lcom/google/android/gms/internal/ads/bq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/asp;)Lcom/google/android/gms/internal/ads/avv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->e:Lcom/google/android/gms/internal/ads/avv;

    return-object v0
.end method

.method private final c()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->b:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/avv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->e:Lcom/google/android/gms/internal/ads/avv;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/avv;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asp;->e:Lcom/google/android/gms/internal/ads/avv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bq;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/asq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/asq;-><init>(Lcom/google/android/gms/internal/ads/asp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->e:Lcom/google/android/gms/internal/ads/avv;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/asp;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->e:Lcom/google/android/gms/internal/ads/avv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avv;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asp;->b:Ljava/lang/Long;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/asp;->c()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/asp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time_interval"

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->l()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/asp;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "messageType"

    const-string v2, "onePointFiveClick"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/asp;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
