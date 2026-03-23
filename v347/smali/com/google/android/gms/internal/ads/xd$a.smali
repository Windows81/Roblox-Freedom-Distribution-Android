.class public final Lcom/google/android/gms/internal/ads/xd$a;
.super Lcom/google/android/gms/internal/ads/abd$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd$a",
        "<",
        "Lcom/google/android/gms/internal/ads/xd;",
        "Lcom/google/android/gms/internal/ads/xd$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/xd;->b()Lcom/google/android/gms/internal/ads/xd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abd$a;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xe;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/xd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/xd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xd;->a(Lcom/google/android/gms/internal/ads/xd;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/xd$b;)Lcom/google/android/gms/internal/ads/xd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/xd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xd;->a(Lcom/google/android/gms/internal/ads/xd;Lcom/google/android/gms/internal/ads/xd$b;)V

    return-object p0
.end method
