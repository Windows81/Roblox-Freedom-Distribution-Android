.class Landroid/arch/b/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/b/b/c;


# direct methods
.method constructor <init>(Landroid/arch/b/b/c;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->b(Landroid/arch/b/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->c(Landroid/arch/b/b/c;)Landroid/arch/b/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/c$a;->a()[I

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 298
    array-length v2, v1

    .line 299
    iget-object v0, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/e;->b()Landroid/arch/b/a/c;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 302
    :try_start_1
    invoke-interface {v3}, Landroid/arch/b/a/b;->a()V

    .line 303
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 304
    aget v4, v1, v0

    packed-switch v4, :pswitch_data_0

    .line 303
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 306
    :pswitch_0
    iget-object v4, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v4, v3, v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;Landroid/arch/b/a/b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 315
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v3}, Landroid/arch/b/a/b;->b()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    :catch_0
    move-exception v0

    .line 321
    :goto_4
    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 309
    :pswitch_1
    :try_start_3
    iget-object v4, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v4, v3, v0}, Landroid/arch/b/b/c;->b(Landroid/arch/b/b/c;Landroid/arch/b/a/b;I)V

    goto :goto_3

    .line 313
    :cond_2
    invoke-interface {v3}, Landroid/arch/b/a/b;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :try_start_4
    invoke-interface {v3}, Landroid/arch/b/a/b;->b()V

    .line 317
    iget-object v0, p0, Landroid/arch/b/b/c$1;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->c(Landroid/arch/b/b/c;)Landroid/arch/b/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/c$a;->b()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 319
    :catch_1
    move-exception v0

    goto :goto_4

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
