.class final synthetic Lcom/google/android/gms/internal/measurement/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/br;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/measurement/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/br;ILcom/google/android/gms/internal/measurement/bj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bs;->a:Lcom/google/android/gms/internal/measurement/br;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/bs;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/bs;->c:Lcom/google/android/gms/internal/measurement/bj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bs;->a:Lcom/google/android/gms/internal/measurement/br;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/bs;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/bs;->c:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/br;->a(ILcom/google/android/gms/internal/measurement/bj;)V

    return-void
.end method
