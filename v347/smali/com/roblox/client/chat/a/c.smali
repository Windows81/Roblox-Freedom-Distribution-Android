.class public Lcom/roblox/client/chat/a/c;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/roblox/client/chat/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/chat/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/chat/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/c;-><init>(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v0, Lcom/roblox/client/chat/a/c$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/a/c$1;-><init>(Lcom/roblox/client/chat/a/c;)V

    iput-object v0, p0, Lcom/roblox/client/chat/a/c;->h:Ljava/util/Comparator;

    .line 146
    iput v1, p0, Lcom/roblox/client/chat/a/c;->a:I

    .line 147
    iput v1, p0, Lcom/roblox/client/chat/a/c;->b:I

    .line 148
    iput v1, p0, Lcom/roblox/client/chat/a/c;->c:I

    .line 47
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/c;->d:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    .line 52
    return-void

    :cond_0
    move-object p1, p0

    .line 47
    goto :goto_0
.end method

.method private b(Lcom/roblox/client/chat/a/h;)V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->f()Ljava/lang/String;

    move-result-object v2

    .line 175
    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/h;->a(Lcom/roblox/client/chat/a/h;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/c;->c(Lcom/roblox/client/chat/a/h;)V

    .line 180
    iget v0, p0, Lcom/roblox/client/chat/a/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/a/c;->a:I

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_1
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/c;->c(Lcom/roblox/client/chat/a/h;)V

    .line 186
    iget v0, p0, Lcom/roblox/client/chat/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/a/c;->b:I

    goto :goto_0

    .line 190
    :cond_1
    if-eqz v2, :cond_2

    .line 191
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/c;->c(Lcom/roblox/client/chat/a/h;)V

    .line 194
    iget v0, p0, Lcom/roblox/client/chat/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/a/c;->b:I

    goto :goto_1

    .line 197
    :cond_2
    iget v0, p0, Lcom/roblox/client/chat/a/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/a/c;->c:I

    goto :goto_1
.end method

.method private c(Lcom/roblox/client/chat/a/h;)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/roblox/client/chat/a/h;->a:Z

    .line 207
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->h:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/roblox/client/chat/a/h;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :goto_0
    if-ltz p1, :cond_1

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 256
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    monitor-exit v1

    .line 261
    :goto_1
    return-object v0

    .line 254
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 260
    :cond_1
    monitor-exit v1

    .line 261
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/util/Set;)Lcom/roblox/client/chat/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/chat/a/h;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 267
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 268
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    monitor-exit v1

    .line 273
    :goto_1
    return-object v0

    .line 266
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    monitor-exit v1

    .line 273
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Lcom/roblox/client/chat/a/c;)V
    .locals 2

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->a(Ljava/util/ArrayList;)V

    .line 129
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/c;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/c;->a(Ljava/util/HashSet;)V

    .line 130
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/roblox/client/chat/a/h;)V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/c;->b(Lcom/roblox/client/chat/a/h;)V

    .line 168
    invoke-direct {p0}, Lcom/roblox/client/chat/a/c;->e()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p2}, Lcom/roblox/client/chat/a/h;->c(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/a/h;->h(Ljava/lang/String;)V

    .line 231
    const-string v2, "Moderated"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/a/h;->f(Ljava/lang/String;)V

    .line 235
    :cond_0
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 213
    if-eqz v0, :cond_1

    .line 214
    if-eqz p3, :cond_0

    .line 215
    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/a/h;->d(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {v0, p2}, Lcom/roblox/client/chat/a/h;->a(Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/a/h;->b(Ljava/lang/String;)V

    .line 219
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/a/h;->a(Ljava/lang/Boolean;)V

    .line 220
    iget-object v2, p0, Lcom/roblox/client/chat/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/roblox/client/chat/a/c;->a:I

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lcom/roblox/client/chat/a/c;->b:I

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Lcom/roblox/client/chat/a/c;->c:I

    move v1, v0

    .line 158
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 159
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/c;->b(Lcom/roblox/client/chat/a/h;)V

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/chat/a/c;->e()V

    .line 162
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/roblox/client/chat/a/c;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public b(ILjava/util/Set;)Lcom/roblox/client/chat/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/chat/a/h;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :goto_0
    if-ltz p1, :cond_1

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 280
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    monitor-exit v1

    .line 285
    :goto_1
    return-object v0

    .line 278
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 284
    :cond_1
    monitor-exit v1

    .line 285
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_0

    move-object v0, v1

    .line 105
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 99
    invoke-virtual {p0, v2}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 100
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    monitor-exit v3

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 104
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 105
    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->c()J

    move-result-wide v0

    .line 119
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/c;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v1

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/roblox/client/chat/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lcom/roblox/client/chat/a/h;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/c;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/roblox/client/chat/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    return-object v0
.end method
