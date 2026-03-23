.class final synthetic Lcom/google/android/gms/internal/measurement/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ce;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/measurement/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ce;ILcom/google/android/gms/internal/measurement/bw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cf;->a:Lcom/google/android/gms/internal/measurement/ce;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/cf;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/cf;->c:Lcom/google/android/gms/internal/measurement/bw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cf;->a:Lcom/google/android/gms/internal/measurement/ce;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/cf;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/cf;->c:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ce;->a(ILcom/google/android/gms/internal/measurement/bw;)V

    return-void
.end method
