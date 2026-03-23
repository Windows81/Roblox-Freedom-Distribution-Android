.class final synthetic Lcom/google/android/gms/internal/ads/ep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/mn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ep;->a:Lcom/google/android/gms/internal/ads/mn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eo;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method
