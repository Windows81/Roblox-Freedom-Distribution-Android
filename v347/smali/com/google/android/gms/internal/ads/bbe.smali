.class public final Lcom/google/android/gms/internal/ads/bbe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bbd;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bbe;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bbd;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbe;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bbe;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbe;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bbe;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bbe;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bbe;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bbe;->i:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbe;->j:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->r:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->m:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbe;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->t:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Mediation Response JSON: "

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    move v3, v4

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->a()Z

    move-result v10

    if-eqz v10, :cond_1

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/bbe;->t:Z

    :cond_1
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v3, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bbd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_2
    if-eqz v0, :cond_3

    move v3, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/bbe;->r:I

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->s:I

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->a:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->i:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->m:I

    const-string v0, "timeout_ms"

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbe;->n:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbe;->b:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->x()Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "click_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/bbn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->c:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->x()Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "imp_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/bbn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->d:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->x()Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "downloaded_imp_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/bbn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->x()Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "nofill_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/bbn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->f:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->x()Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "remote_ping_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/bbn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/List;

    const-string v0, "render_in_browser"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Z

    const-string v0, "refresh"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbe;->j:J

    const-string v0, "rewards"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaig;->a(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzaig;

    move-result-object v0

    if-nez v0, :cond_8

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->k:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/ads/bbe;->l:I

    :goto_4
    const-string v0, "use_displayed_impression"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->o:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->p:Z

    const-string v0, "allow_pub_owned_ad_view"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbe;->q:Z

    :goto_5
    return-void

    :cond_7
    move-wide v0, v6

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->k:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaig;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbe;->l:I

    goto :goto_4

    :cond_9
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/bbe;->b:J

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->c:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->d:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->e:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->f:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/List;

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/bbe;->j:J

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/bbe;->k:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/ads/bbe;->l:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bbe;->o:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bbe;->p:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bbe;->q:Z

    goto :goto_5
.end method
