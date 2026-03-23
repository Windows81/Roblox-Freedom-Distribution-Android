.class final synthetic Lcom/google/android/gms/internal/measurement/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ce;

.field private final b:Lcom/google/android/gms/internal/measurement/bw;

.field private final c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ce;Lcom/google/android/gms/internal/measurement/bw;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cg;->a:Lcom/google/android/gms/internal/measurement/ce;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/cg;->b:Lcom/google/android/gms/internal/measurement/bw;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/cg;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cg;->a:Lcom/google/android/gms/internal/measurement/ce;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/cg;->b:Lcom/google/android/gms/internal/measurement/bw;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/cg;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ce;->a(Lcom/google/android/gms/internal/measurement/bw;Landroid/app/job/JobParameters;)V

    return-void
.end method
