.class public final Lcom/google/android/gms/internal/ads/wd$a;
.super Lcom/google/android/gms/internal/ads/abd$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/wd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd$a",
        "<",
        "Lcom/google/android/gms/internal/ads/wd;",
        "Lcom/google/android/gms/internal/ads/wd$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wd;->g()Lcom/google/android/gms/internal/ads/wd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abd$a;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/we;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/wd$a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wd;->a(Lcom/google/android/gms/internal/ads/wd;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vz;)Lcom/google/android/gms/internal/ads/wd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wd;->a(Lcom/google/android/gms/internal/ads/wd;Lcom/google/android/gms/internal/ads/vz;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wd;->a(Lcom/google/android/gms/internal/ads/wd;Lcom/google/android/gms/internal/ads/zv;)V

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/wd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wd;->b(Lcom/google/android/gms/internal/ads/wd;Lcom/google/android/gms/internal/ads/zv;)V

    return-object p0
.end method
