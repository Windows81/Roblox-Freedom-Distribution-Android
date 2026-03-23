.class Lcom/roblox/client/routing/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/routing/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/roblox/client/routing/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lorg/greenrobot/eventbus/c;

.field private b:Lcom/roblox/client/routing/b;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/c;Lcom/roblox/client/routing/b;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/roblox/client/routing/a$a;->a:Lorg/greenrobot/eventbus/c;

    .line 103
    iput-object p2, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    .line 104
    iput-object p3, p0, Lcom/roblox/client/routing/a$a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/routing/a$a;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/roblox/client/routing/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/roblox/client/routing/d;",
            ">;"
        }
    .end annotation

    const-string v0, "AppRouter"

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 313
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 315
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/roblox/client/routing/c;->valueOf(Ljava/lang/String;)Lcom/roblox/client/routing/c;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    .line 324
    invoke-virtual {v3}, Lcom/roblox/client/routing/c;->c()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    const-string p1, "Incorrect number of parameters. Stop building routes."

    .line 325
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p1, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    invoke-virtual {v3}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/roblox/client/routing/a$a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/routing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 330
    :cond_0
    new-instance v4, Lcom/roblox/client/routing/d;

    invoke-direct {v4, v3, p2}, Lcom/roblox/client/routing/d;-><init>(Lcom/roblox/client/routing/c;Ljava/util/HashMap;)V

    goto :goto_1

    .line 332
    :cond_1
    new-instance v4, Lcom/roblox/client/routing/d;

    invoke-direct {v4, v3}, Lcom/roblox/client/routing/d;-><init>(Lcom/roblox/client/routing/c;)V

    .line 335
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "AppTarget not recognized. Stop building routes."

    .line 317
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private a(Lcom/roblox/client/routing/model/RouteModel;)Z
    .locals 2

    .line 157
    iget-object v0, p1, Lcom/roblox/client/routing/model/RouteModel;->android_default_action_handler:Ljava/lang/String;

    const-string v1, "native"

    if-eqz v0, :cond_0

    .line 158
    iget-object p1, p1, Lcom/roblox/client/routing/model/RouteModel;->android_default_action_handler:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    iget-object p1, p1, Lcom/roblox/client/routing/model/RouteModel;->default_action_handler:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/roblox/client/routing/model/RouteModel;
    .locals 2

    .line 146
    :try_start_0
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    const-class v1, Lcom/roblox/client/routing/model/RouteModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/routing/model/RouteModel;
    :try_end_0
    .catch Lcom/google/gson/t; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AppRouter"

    const-string v1, "Invalid json string."

    .line 148
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    invoke-virtual {v1, p1}, Lcom/roblox/client/routing/b;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/routing/d;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/roblox/client/routing/a$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/roblox/client/routing/a$a$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/routing/a$a$1;-><init>(Lcom/roblox/client/routing/a$a;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/roblox/client/routing/d;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppRouter"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/routing/a$a;->e:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/routing/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/roblox/client/routing/a$a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 197
    invoke-direct {p0, v1, p1}, Lcom/roblox/client/routing/a$a;->a(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/roblox/client/routing/a$a;)Lorg/greenrobot/eventbus/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/roblox/client/routing/a$a;->a:Lorg/greenrobot/eventbus/c;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "://"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 248
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 254
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    array-length v2, v1

    if-nez v2, :cond_2

    return-object v0

    .line 260
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\\?"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 280
    aget-object p1, p1, v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v3, "&"

    .line 286
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 289
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p1, v5

    if-eqz v6, :cond_2

    const-string v7, "="

    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 293
    array-length v7, v6

    if-ne v7, v2, :cond_2

    .line 294
    aget-object v7, v6, v4

    aget-object v6, v6, v1

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/roblox/client/routing/d;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    invoke-virtual {v0}, Lcom/roblox/client/routing/b;->a()V

    const/4 v0, 0x0

    .line 110
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->b(Ljava/lang/String;)Lcom/roblox/client/routing/model/RouteModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultActionHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/routing/model/RouteModel;->default_action_handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/routing/model/RouteModel;->default_action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppRouter"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->a(Lcom/roblox/client/routing/model/RouteModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    invoke-virtual {v0}, Lcom/roblox/client/routing/b;->b()V

    .line 120
    iget-object p1, p1, Lcom/roblox/client/routing/model/RouteModel;->default_action:Ljava/lang/String;

    iput-object p1, p0, Lcom/roblox/client/routing/a$a;->d:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    iget-object v1, p0, Lcom/roblox/client/routing/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/routing/b;->b(Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/routing/a$a;->b:Lcom/roblox/client/routing/b;

    invoke-virtual {p1}, Lcom/roblox/client/routing/b;->e()V

    const-string p1, "Should be handled by Lua."

    .line 130
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/routing/d;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/roblox/client/routing/a$a;->b(Ljava/util/List;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/routing/a$a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/roblox/client/routing/a$a;->a(Ljava/util/List;)V

    return-void
.end method
