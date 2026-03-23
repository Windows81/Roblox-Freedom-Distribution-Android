.class Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;
.super Landroidx/h/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b(Landroidx/h/a;)Landroidx/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB_Impl;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-direct {p0, p2}, Landroidx/h/g$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `Strings`"

    .line 38
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroidx/i/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Strings` (`robloxLocaleValue` TEXT NOT NULL, `stringsKeyValueMap` TEXT, PRIMARY KEY(`robloxLocaleValue`))"

    .line 31
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 32
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"a2b3e2b8e2997b1b02bd3a27a21f086e\")"

    .line 33
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroidx/i/a/b;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v0, p1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;

    .line 53
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v0, p1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroidx/i/a/b;)V

    .line 54
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v0}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->e(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v2}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->f(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/h/e$b;

    invoke-virtual {v2, p1}, Landroidx/h/e$b;->b(Landroidx/i/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Landroidx/i/a/b;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v0}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;->b:Lcom/roblox/client/locale/db/room/StringsDB_Impl;

    invoke-static {v2}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/h/e$b;

    invoke-virtual {v2, p1}, Landroidx/h/e$b;->a(Landroidx/i/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Landroidx/i/a/b;)V
    .locals 5

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    new-instance v1, Landroidx/h/b/a$a;

    const-string v2, "robloxLocaleValue"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/h/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Landroidx/h/b/a$a;

    const-string v2, "stringsKeyValueMap"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/h/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 68
    new-instance v3, Landroidx/h/b/a;

    const-string v4, "Strings"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/h/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 69
    invoke-static {p1, v4}, Landroidx/h/b/a;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/h/b/a;

    move-result-object p1

    .line 70
    invoke-virtual {v3, p1}, Landroidx/h/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle Strings(com.roblox.client.locale.db.room.Strings).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
