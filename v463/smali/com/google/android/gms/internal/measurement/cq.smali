.class final Lcom/google/android/gms/internal/measurement/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/cp;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cq;->c:Lcom/google/android/gms/internal/measurement/cp;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/cq;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/cq;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cq;->c:Lcom/google/android/gms/internal/measurement/cp;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/cq;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/cq;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/cp;Ljava/lang/String;J)V

    return-void
.end method
