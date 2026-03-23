.class public Lcom/roblox/client/r/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/r/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/roblox/client/r/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/r/f;ILjava/lang/Throwable;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/r/f$a;->c:Lcom/roblox/client/r/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lcom/roblox/client/r/f$a;->a:I

    .line 37
    iput-object p3, p0, Lcom/roblox/client/r/f$a;->b:Ljava/lang/Throwable;

    return-void
.end method
