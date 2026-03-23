.class Lcom/roblox/client/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;

.field private b:Lcom/roblox/engine/components/NativeTextBoxInfo;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/roblox/client/e;Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/roblox/client/e$a;->a:Lcom/roblox/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/roblox/client/e$a;->b:Lcom/roblox/engine/components/NativeTextBoxInfo;

    .line 206
    iput-object p3, p0, Lcom/roblox/client/e$a;->c:Landroid/widget/EditText;

    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/roblox/client/e$a;->a:Lcom/roblox/client/e;

    iget-object v1, p0, Lcom/roblox/client/e$a;->b:Lcom/roblox/engine/components/NativeTextBoxInfo;

    iget-object v2, p0, Lcom/roblox/client/e$a;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/e;->a(Lcom/roblox/client/e;Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V

    .line 212
    return-void
.end method
