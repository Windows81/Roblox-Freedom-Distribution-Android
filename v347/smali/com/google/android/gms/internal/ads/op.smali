.class final synthetic Lcom/google/android/gms/internal/ads/op;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/om;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/om;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/op;->a:Lcom/google/android/gms/internal/ads/om;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/om;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/op;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/op;-><init>(Lcom/google/android/gms/internal/ads/om;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/op;->a:Lcom/google/android/gms/internal/ads/om;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/om;->b()V

    return-void
.end method
