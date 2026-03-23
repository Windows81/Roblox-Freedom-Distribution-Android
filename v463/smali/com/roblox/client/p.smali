.class public Lcom/roblox/client/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 242
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/c;->c()V

    return-void
.end method

.method public static a(I)V
    .locals 3

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "property"

    invoke-direct {v1, v2, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "nsOpenContent"

    const-string v1, "touch"

    .line 207
    invoke-static {p0, v1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/analytics/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 144
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/roblox/client/p;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 131
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    invoke-static {}, Lcom/roblox/client/p;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contactFriendFinder"

    .line 201
    invoke-static {p0, v0, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/analytics/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "splash"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/roblox/client/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireScreenLoaded() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.eventstream"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sput-object p0, Lcom/roblox/client/p;->a:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/analytics/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "type"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "logout"

    .line 169
    invoke-static {p0, p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireScreenUnloaded() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.eventstream"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/analytics/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 173
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/analytics/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/roblox/client/p;->a()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/analytics/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-static {p0, p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-static {p0, p1, v0, v0, p2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 178
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/analytics/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "recipientId"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance p1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v1, "senderId"

    invoke-direct {p1, v1, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fromInApp"

    invoke-direct {p0, v1, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fromInGame"

    invoke-direct {p0, v1, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const-string p1, "pg"

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "friending"

    const-string p1, "request"

    .line 224
    invoke-static {p0, p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "recipientId"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance p1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v1, "senderId"

    invoke-direct {p1, v1, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fromInApp"

    invoke-direct {p0, v1, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fromInGame"

    invoke-direct {p0, v1, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance p0, Lcom/roblox/client/datastructures/NameValuePair;

    const-string p1, "pg"

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "friending"

    const-string p1, "accept"

    .line 235
    invoke-static {p0, p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
