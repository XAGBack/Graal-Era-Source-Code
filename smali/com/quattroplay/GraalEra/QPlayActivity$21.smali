.class Lcom/quattroplay/GraalEra/QPlayActivity$21;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->setWebViewURL(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$furl:Ljava/lang/String;

.field final synthetic val$fviewid:I


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->val$fviewid:I

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->val$furl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->val$fviewid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1180
    .local v0, "view":Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$21;->val$furl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
