.class public Lcom/roblox/client/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/b;->b()V

    .line 312
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "property"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v1, "nsOpenContent"

    const-string v2, "touch"

    invoke-static {v1, v2, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 297
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->evtAppLaunchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/roblox/client/http/s;

    invoke-direct {v1, v0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p0, p1}, Lcom/roblox/client/RobloxSettings;->evtAppStageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/roblox/client/http/s;

    invoke-direct {v1, v0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/roblox/client/RobloxSettings;->evtButtonClickUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 190
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/roblox/client/RobloxSettings;->evtPushNotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "RbxAnalytics"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Lcom/roblox/client/http/s;

    new-instance v2, Lcom/roblox/client/i$2;

    invoke-direct {v2}, Lcom/roblox/client/i$2;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 204
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 164
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 168
    invoke-static/range {v0 .. v6}, Lcom/roblox/client/RobloxSettings;->evtPushNotificationInteracted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "RbxAnalytics"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Lcom/roblox/client/http/s;

    new-instance v2, Lcom/roblox/client/i$1;

    invoke-direct {v2}, Lcom/roblox/client/i$1;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 178
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 184
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {p0, p1, p3, p2}, Lcom/roblox/client/RobloxSettings;->evtFormFieldUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/i;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 283
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->rbxAnalyticsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, "&evt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, "&ctx="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    if-eqz p2, :cond_1

    .line 271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/NameValuePair;

    .line 272
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Lcom/roblox/client/datastructures/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Lcom/roblox/client/datastructures/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/roblox/client/http/s;

    invoke-direct {v1, v0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/b/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/roblox/client/RobloxSettings;->evtFormFieldUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/i;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    const-string v0, "contactFriendFinder"

    invoke-static {p0, v0, p1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 291
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/b/b;->a(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "property"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v1, "chatOpen"

    const-string v2, "touch"

    invoke-static {v1, v2, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "splash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/roblox/client/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/roblox/client/i;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :cond_2
    const-string v0, "rbx.eventstream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireScreenLoaded() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput-object p0, Lcom/roblox/client/i;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/b/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->evtScreenLoadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/roblox/client/http/s;

    invoke-direct {v1, v0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lcom/roblox/client/RobloxSettings;->evtButtonClickUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/roblox/client/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/roblox/client/RobloxSettings;->evtFormFieldInteractionUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/i;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/b/b;->c(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->evtSharingAppSelected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "RbxAnalytics"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Lcom/roblox/client/http/s;

    new-instance v2, Lcom/roblox/client/i$3;

    invoke-direct {v2}, Lcom/roblox/client/i$3;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 225
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 287
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-static {p0, p1, v0, v0, p2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/roblox/client/http/s;

    invoke-direct {v0, p0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/roblox/client/http/s;->a()V

    .line 119
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/roblox/client/b;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/roblox/client/RobloxSettings;->evtFormSubmitFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "RbxAnalytics"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Lcom/roblox/client/http/s;

    new-instance v2, Lcom/roblox/client/i$4;

    invoke-direct {v2}, Lcom/roblox/client/i$4;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 255
    invoke-virtual {v1}, Lcom/roblox/client/http/s;->a()V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/roblox/client/http/s;

    invoke-direct {v0, p0}, Lcom/roblox/client/http/s;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/roblox/client/http/s;->a()V

    .line 160
    return-void
.end method
