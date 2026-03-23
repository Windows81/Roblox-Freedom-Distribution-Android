.class public interface abstract Lcom/d/a/t$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/d/a/t$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/d/a/t$f$1;

    invoke-direct {v0}, Lcom/d/a/t$f$1;-><init>()V

    sput-object v0, Lcom/d/a/t$f;->a:Lcom/d/a/t$f;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/d/a/w;)Lcom/d/a/w;
.end method
