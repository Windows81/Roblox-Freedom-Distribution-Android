.class final synthetic Lcom/google/android/gms/internal/ads/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/bu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bw;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/bu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bw;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/qd;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bu;->d(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qd;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method
