.class final Lcom/google/android/gms/internal/ads/asu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ast;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ast;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ast;->a(Lcom/google/android/gms/internal/ads/ast;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ast;->a(Lcom/google/android/gms/internal/ads/ast;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ate;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ast;->a(Lcom/google/android/gms/internal/ads/ast;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ate;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ast;->a(Lcom/google/android/gms/internal/ads/ast;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ate;->k()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asu;->a:Lcom/google/android/gms/internal/ads/ast;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ast;->a(Lcom/google/android/gms/internal/ads/ast;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/ate;

    return-void
.end method
