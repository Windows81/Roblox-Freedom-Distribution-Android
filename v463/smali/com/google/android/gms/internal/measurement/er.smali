.class final Lcom/google/android/gms/internal/measurement/er;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/eq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/er;->a:Lcom/google/android/gms/internal/measurement/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/er;->a:Lcom/google/android/gms/internal/measurement/eq;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/eq;->a:Lcom/google/android/gms/internal/measurement/eo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/eo;->b()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/er;->a:Lcom/google/android/gms/internal/measurement/eq;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/eq;->a:Lcom/google/android/gms/internal/measurement/eo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Landroid/os/Bundle;)V

    return-void
.end method
