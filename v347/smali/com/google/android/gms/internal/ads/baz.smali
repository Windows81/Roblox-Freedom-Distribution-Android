.class final Lcom/google/android/gms/internal/ads/baz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/h;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azx;

.field private final b:Lcom/google/android/gms/internal/ads/no;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/baw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/azx;Lcom/google/android/gms/internal/ads/no;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baz;->c:Lcom/google/android/gms/internal/ads/baw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/no;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/bak;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bak;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azx;->c()V

    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/no;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->c:Lcom/google/android/gms/internal/ads/baw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/baw;->a(Lcom/google/android/gms/internal/ads/baw;)Lcom/google/android/gms/internal/ads/ban;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ban;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/no;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/no;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/no;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azx;->c()V

    throw v0
.end method
