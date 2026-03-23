.class final Lcom/google/android/gms/internal/measurement/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/bk;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z;->b:Lcom/google/android/gms/internal/measurement/v;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/z;->a:Lcom/google/android/gms/internal/measurement/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z;->b:Lcom/google/android/gms/internal/measurement/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/v;)Lcom/google/android/gms/internal/measurement/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z;->a:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/bk;)V

    return-void
.end method
