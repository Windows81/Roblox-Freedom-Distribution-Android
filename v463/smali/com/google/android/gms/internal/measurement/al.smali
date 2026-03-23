.class final Lcom/google/android/gms/internal/measurement/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/bs;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/al;->b:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/al;->a:Lcom/google/android/gms/internal/measurement/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al;->b:Lcom/google/android/gms/internal/measurement/ak;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al;->b:Lcom/google/android/gms/internal/measurement/ak;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/internal/measurement/ai;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al;->b:Lcom/google/android/gms/internal/measurement/ak;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/internal/measurement/ai;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/al;->a:Lcom/google/android/gms/internal/measurement/bs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/ai;Lcom/google/android/gms/internal/measurement/bs;)V

    :cond_0
    return-void
.end method
