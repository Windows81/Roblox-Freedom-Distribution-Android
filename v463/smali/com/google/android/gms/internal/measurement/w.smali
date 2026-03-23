.class final Lcom/google/android/gms/internal/measurement/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/v;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w;->b:Lcom/google/android/gms/internal/measurement/v;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->b:Lcom/google/android/gms/internal/measurement/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/v;)Lcom/google/android/gms/internal/measurement/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    return-void
.end method
