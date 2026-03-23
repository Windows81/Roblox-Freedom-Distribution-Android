.class Lcom/roblox/client/signup/a$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a$14;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a$14;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 735
    iget-object v1, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v1, v1, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->q(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxProgressButton;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    iget-object v3, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v3, v3, Lcom/roblox/client/signup/a$14;->a:Landroid/content/Context;

    sget v4, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_RegisteringWord:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 736
    iget-object v1, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v1, v1, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;J)J

    .line 737
    new-instance v1, Lcom/roblox/client/signup/c;

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 738
    invoke-static {v2}, Lcom/roblox/client/signup/a;->r(Lcom/roblox/client/signup/a;)I

    move-result v7

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 739
    invoke-static {v2}, Lcom/roblox/client/signup/a;->s(Lcom/roblox/client/signup/a;)I

    move-result v8

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 740
    invoke-static {v2}, Lcom/roblox/client/signup/a;->t(Lcom/roblox/client/signup/a;)I

    move-result v9

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 741
    invoke-static {v2}, Lcom/roblox/client/signup/a;->u(Lcom/roblox/client/signup/a;)I

    move-result v10

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 742
    invoke-static {v2}, Lcom/roblox/client/signup/a;->v(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 743
    invoke-static {v2}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 744
    invoke-static {v2}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v14, v2, Lcom/roblox/client/signup/a$14;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v15, v2, Lcom/roblox/client/signup/a$14;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/client/signup/a$14$1;->a:Lcom/roblox/client/signup/a$14;

    iget-object v2, v2, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    .line 747
    invoke-static {v2}, Lcom/roblox/client/signup/a;->w(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/d$a;

    move-result-object v16

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lcom/roblox/client/signup/c;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/d$a;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
