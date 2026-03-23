.class public Lcom/roblox/client/purchase/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/purchase/b;->d:I

    .line 14
    iput-object p1, p0, Lcom/roblox/client/purchase/b;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/roblox/client/purchase/b;->b:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/roblox/client/purchase/b;->c:Z

    .line 17
    return-void
.end method
