.class Lcom/roblox/client/j/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/j/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j/b;->a(Landroid/content/Context;Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/roblox/client/j/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/j/b;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/roblox/client/j/b$4;->c:Lcom/roblox/client/j/b;

    iput-object p2, p0, Lcom/roblox/client/j/b$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/j/b$4;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/roblox/client/locale/f;

    invoke-direct {v0}, Lcom/roblox/client/locale/f;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/j/b$4;->a:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/j/b$4$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/j/b$4$1;-><init>(Lcom/roblox/client/j/b$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/f;->a(Landroid/content/Context;Lcom/roblox/client/locale/f$a;)V

    .line 128
    return-void
.end method
