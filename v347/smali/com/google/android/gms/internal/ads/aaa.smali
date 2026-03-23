.class final Lcom/google/android/gms/internal/ads/aaa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aaj;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->b:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aaj;->a([B)Lcom/google/android/gms/internal/ads/aaj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Lcom/google/android/gms/internal/ads/aaj;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aaa;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->b()V

    new-instance v0, Lcom/google/android/gms/internal/ads/aac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aac;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/aaj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Lcom/google/android/gms/internal/ads/aaj;

    return-object v0
.end method
