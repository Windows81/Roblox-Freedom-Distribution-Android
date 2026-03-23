.class final Lcom/google/android/gms/internal/measurement/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/be;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/i;Lcom/google/android/gms/internal/measurement/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l;->b:Lcom/google/android/gms/internal/measurement/i;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l;->a:Lcom/google/android/gms/internal/measurement/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l;->b:Lcom/google/android/gms/internal/measurement/i;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i;->a(Lcom/google/android/gms/internal/measurement/i;)Lcom/google/android/gms/internal/measurement/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l;->a:Lcom/google/android/gms/internal/measurement/be;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ad;->a(Lcom/google/android/gms/internal/measurement/be;)V

    return-void
.end method
