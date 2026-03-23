.class final Lcom/google/android/gms/internal/measurement/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Lcom/google/android/gms/internal/measurement/i;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->b:Lcom/google/android/gms/internal/measurement/i;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i;->a(Lcom/google/android/gms/internal/measurement/i;)Lcom/google/android/gms/internal/measurement/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    return-void
.end method
