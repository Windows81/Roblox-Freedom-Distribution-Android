.class Lcom/roblox/client/j/b$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j/b$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/j/b$4;


# direct methods
.method constructor <init>(Lcom/roblox/client/j/b$4;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/j/b$4$1;->a:Lcom/roblox/client/j/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/roblox/client/j/b$4$1;->a:Lcom/roblox/client/j/b$4;

    iget-object v0, v0, Lcom/roblox/client/j/b$4;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/e;->a(I)V

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/client/j/b;->a(Z)Z

    .line 126
    return-void
.end method
