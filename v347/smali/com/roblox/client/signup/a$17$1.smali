.class Lcom/roblox/client/signup/a$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a$17;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a$17;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 692
    iget-object v0, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v0, v0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->y(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxProgressButton;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    const v2, 0x7f0e00d3

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 693
    iget-object v0, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v0, v0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;J)J

    .line 694
    new-instance v0, Lcom/roblox/client/signup/d;

    iget-object v1, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v1, v1, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 695
    invoke-static {v1}, Lcom/roblox/client/signup/a;->z(Lcom/roblox/client/signup/a;)I

    move-result v1

    iget-object v2, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v2, v2, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 696
    invoke-static {v2}, Lcom/roblox/client/signup/a;->A(Lcom/roblox/client/signup/a;)I

    move-result v2

    iget-object v3, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v3, v3, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 697
    invoke-static {v3}, Lcom/roblox/client/signup/a;->B(Lcom/roblox/client/signup/a;)I

    move-result v3

    iget-object v4, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v4, v4, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 698
    invoke-static {v4}, Lcom/roblox/client/signup/a;->C(Lcom/roblox/client/signup/a;)I

    move-result v4

    iget-object v5, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v5, v5, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 699
    invoke-static {v5}, Lcom/roblox/client/signup/a;->D(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v6, v6, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 700
    invoke-static {v6}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v7, v7, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 701
    invoke-static {v7}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/roblox/client/signup/a$17$1;->a:Lcom/roblox/client/signup/a$17;

    iget-object v8, v8, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 702
    invoke-static {v8}, Lcom/roblox/client/signup/a;->E(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/e$a;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/signup/d;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 703
    return-void
.end method
