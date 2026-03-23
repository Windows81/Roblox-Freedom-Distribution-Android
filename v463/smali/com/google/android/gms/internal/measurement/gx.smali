.class final Lcom/google/android/gms/internal/measurement/gx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/gv;

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/gv;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/gw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gw;ZLcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/gx;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gx;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/gw;->a:Lcom/google/android/gms/internal/measurement/gv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/gw;->a:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gw;->a(Lcom/google/android/gms/internal/measurement/gw;Lcom/google/android/gms/internal/measurement/gv;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/gv;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/gv;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/gv;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/gv;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/gv;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/gv;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/gw;->a(Lcom/google/android/gms/internal/measurement/gv;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/gv;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/gv;->a:Ljava/lang/String;

    const-string v2, "_pn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/gv;->b:Ljava/lang/String;

    const-string v2, "_pc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->b:Lcom/google/android/gms/internal/measurement/gv;

    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/gv;->c:J

    const-string v3, "_pi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fx;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/gb;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/gw;->a:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gx;->d:Lcom/google/android/gms/internal/measurement/gw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gx;->c:Lcom/google/android/gms/internal/measurement/gv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gz;->a(Lcom/google/android/gms/internal/measurement/gv;)V

    return-void
.end method
