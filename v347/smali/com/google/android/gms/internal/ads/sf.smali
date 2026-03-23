.class final synthetic Lcom/google/android/gms/internal/ads/sf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/se;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/se;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sf;->a:Lcom/google/android/gms/internal/ads/se;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sf;->a:Lcom/google/android/gms/internal/ads/se;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/se;->L()V

    return-void
.end method
