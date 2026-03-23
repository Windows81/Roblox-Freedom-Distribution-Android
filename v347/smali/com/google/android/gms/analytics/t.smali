.class final Lcom/google/android/gms/analytics/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/analytics/o;

.field private final synthetic b:Lcom/google/android/gms/analytics/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/t;->b:Lcom/google/android/gms/analytics/s;

    iput-object p2, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->h()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->b:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->a(Lcom/google/android/gms/analytics/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/v;

    iget-object v2, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/o;

    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/v;->a(Lcom/google/android/gms/analytics/o;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->b:Lcom/google/android/gms/analytics/s;

    iget-object v1, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/o;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/o;)V

    return-void
.end method
