class DocumentCaptureSession < ApplicationRecord
  include NonNullUuid

  belongs_to :user

  def load_result
    DocumentCaptureSessionResult.load(result_id)
  end

  def store_result_from_response(doc_auth_response)
    result = DocumentCaptureSessionResult.new(
      id: generate_result_id,
      success: doc_auth_response.success?,
      errors: doc_auth_response.errors,
      pii: doc_auth_response.pii_from_doc,
    )
    result.unload
  end

  private

  def generate_result_id
    self.result_id = SecureRandom.uuid
  end
end
