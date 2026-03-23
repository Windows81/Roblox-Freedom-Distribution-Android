.class final synthetic Lcom/google/android/gms/internal/ads/atn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/atm;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/android/gms/internal/ads/bq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/atm;Ljava/util/Map;Lcom/google/android/gms/internal/ads/bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atn;->a:Lcom/google/android/gms/internal/ads/atm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/atn;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/atn;->c:Lcom/google/android/gms/internal/ads/bq;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atn;->a:Lcom/google/android/gms/internal/ads/atm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atn;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/atn;->c:Lcom/google/android/gms/internal/ads/bq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/atm;->a:Lcom/google/android/gms/internal/ads/atl;

    const-string v4, "id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/atl;->a(Lcom/google/android/gms/internal/ads/atl;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "messageType"

    const-string v4, "htmlLoaded"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/atm;->a:Lcom/google/android/gms/internal/ads/atl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/atl;->b(Lcom/google/android/gms/internal/ads/atl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendMessageToNativeJs"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
