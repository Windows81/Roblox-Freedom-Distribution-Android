.class final Lcom/google/android/gms/internal/measurement/hs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/hn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/hn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hs;->a:Lcom/google/android/gms/internal/measurement/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hs;->a:Lcom/google/android/gms/internal/measurement/hn;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hn;->a:Lcom/google/android/gms/internal/measurement/gz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gz;->a(Lcom/google/android/gms/internal/measurement/gz;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/dp;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hs;->a:Lcom/google/android/gms/internal/measurement/hn;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hn;->a:Lcom/google/android/gms/internal/measurement/gz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gz;->b(Lcom/google/android/gms/internal/measurement/gz;)V

    return-void
.end method
