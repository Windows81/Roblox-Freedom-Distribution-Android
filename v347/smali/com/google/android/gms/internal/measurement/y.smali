.class final Lcom/google/android/gms/internal/measurement/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/bf;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/x;Lcom/google/android/gms/internal/measurement/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/x;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y;->a:Lcom/google/android/gms/internal/measurement/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/x;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/x;->a:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/x;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/x;->a:Lcom/google/android/gms/internal/measurement/v;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/o;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/x;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/x;->a:Lcom/google/android/gms/internal/measurement/v;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y;->a:Lcom/google/android/gms/internal/measurement/bf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/bf;)V

    :cond_0
    return-void
.end method
