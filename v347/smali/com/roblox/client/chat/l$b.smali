.class Lcom/roblox/client/chat/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/chat/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/support/v4/app/Fragment;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;JJ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p2, p0, Lcom/roblox/client/chat/l$b;->a:J

    .line 73
    iput-object p1, p0, Lcom/roblox/client/chat/l$b;->b:Landroid/support/v4/app/Fragment;

    .line 74
    iput-wide p4, p0, Lcom/roblox/client/chat/l$b;->c:J

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/chat/l$b;->b:Landroid/support/v4/app/Fragment;

    iget-wide v2, p0, Lcom/roblox/client/chat/l$b;->a:J

    iget-wide v4, p0, Lcom/roblox/client/chat/l$b;->c:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;JJ)V

    .line 79
    return-void
.end method
