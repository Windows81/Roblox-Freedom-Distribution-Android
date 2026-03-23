.class final Lcom/google/android/gms/internal/measurement/eh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/eg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/eh;->b:Lcom/google/android/gms/internal/measurement/eg;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/eh;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eh;->b:Lcom/google/android/gms/internal/measurement/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eg;->a(Lcom/google/android/gms/internal/measurement/eg;)Lcom/google/android/gms/internal/measurement/ii;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/eh;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ii;->a(Z)V

    return-void
.end method
